//
//  ViewController.swift
//  StopWatchApp
//
//  Created by akio0911youtube on 2021/03/07.
//

import UIKit

final class ViewController: UIViewController {

    private struct Lap {
        var index: Int
        var timeInterval: TimeInterval
    }

    private struct RunningState {
        var elapsedTime: TimeInterval
        let startDate = Date()
        var timer: Timer
        var laps: [Lap]
        var lapButtonTappedAt: Date?

        init(elapsedTime: TimeInterval,
             timer: Timer,
             laps: [ViewController.Lap],
             lapButtonTappedAt: Date?) {

            self.elapsedTime = elapsedTime
            self.timer = timer
            self.laps = laps
            self.lapButtonTappedAt = lapButtonTappedAt
        }
    }

    private struct PauseState {
        var elapsedTime: TimeInterval
        var laps: [Lap]
        var lapButtonTappedAt: Date?

        init(elapsedTime: TimeInterval,
             laps: [ViewController.Lap],
             lapButtonTappedAt: Date?) {

            self.elapsedTime = elapsedTime
            self.laps = laps
            self.lapButtonTappedAt = lapButtonTappedAt
        }
    }

    private enum State {
        case idle
        case running(RunningState)
        case pause(PauseState)

        func elapsedTime(now: Date) -> TimeInterval {
            switch self {
            case .idle:
                return 0
            case let .running(state):
                return state.elapsedTime
                    + now.timeIntervalSince(state.startDate)
            case let .pause(state):
                return state.elapsedTime
            }
        }

        var laps: [Lap] {
            switch self {
            case .idle:
                return []
            case let .running(state):
                return state.laps
            case let .pause(state):
                return state.laps
            }
        }
    }

    private var state: State = .idle

    @IBOutlet private weak var elapsedTimeLabel: UILabel!
    @IBOutlet private weak var startButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        elapsedTimeLabel.font = UIFont.monospacedDigitSystemFont(
            ofSize: 50,
            weight: .bold
        )

        updateUI()
    }

    private func scheduleTimer() -> Timer {
        Timer.scheduledTimer(
            withTimeInterval: 1.0 / 100.0,
            repeats: true,
            block: { [weak self] _ in
                self?.updateElapsedTimeLabel()
            }
        )
    }

    @IBAction func didTapStartButton(_ sender: Any) {
        switch state {
        case .idle:
            state = .running(
                RunningState(
                    elapsedTime: 0,
                    timer: scheduleTimer(),
                    laps: [],
                    lapButtonTappedAt: nil
                )
            )
        case let .running(runningState):
            runningState.timer.invalidate()
            state = .pause(
                PauseState(
                    elapsedTime: runningState.elapsedTime + Date().timeIntervalSince(runningState.startDate),
                    laps: runningState.laps,
                    lapButtonTappedAt: runningState.lapButtonTappedAt
                )
            )
        case let .pause(pauseState):
            state = .running(
                RunningState(
                    elapsedTime: pauseState.elapsedTime,
                    timer: scheduleTimer(),
                    laps: pauseState.laps,
                    lapButtonTappedAt: pauseState.lapButtonTappedAt
                )
            )
        }
        updateUI()
    }

    @IBAction func didTapResetButton(_ sender: Any) {
        switch state {
        case .idle:
            break
        case let .running(runningState):
            var newState = runningState

            let timeInterval: TimeInterval
            if let lapButtonTappedAt = runningState.lapButtonTappedAt {

                timeInterval = Date().timeIntervalSince(lapButtonTappedAt)
            } else {
                timeInterval = state.elapsedTime(now: Date())
            }

            let newLap = Lap(
                index: newState.laps.count,
                timeInterval: timeInterval
            )

            newState.laps = [newLap] + newState.laps

            newState.lapButtonTappedAt = Date()

            state = .running(newState)
        case .pause:
            state = .idle
        }
        updateUI()
    }

    private func updateUI() {
        startButton.setTitle(
            {
                switch state {
                case .idle, .pause:
                    return "開始"
                case .running:
                    return "停止"
                }
            }(),
            for: .normal
        )

        resetButton.setTitle(
            {
                switch state {
                case .idle, .pause:
                    return "リセット"
                case .running:
                    return "ラップ"
                }
            }(),
            for: .normal
        )

        updateElapsedTimeLabel()

        tableView.reloadData()
    }

    private func updateElapsedTimeLabel() {
        let elapsedTime = state.elapsedTime(now: Date())

        elapsedTimeLabel.text
            = String(elapsedTime: elapsedTime)
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        state.laps.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "LapCell", for: indexPath)

        let lap = state.laps[indexPath.row]
        cell.textLabel?.text = "ラップ\(lap.index + 1)"
        cell.detailTextLabel?.text
            = String(elapsedTime: lap.timeInterval)

        return cell
    }
}

private extension String {
    init(elapsedTime: TimeInterval) {
        let minute = Int(elapsedTime) / 60
        let second = Int(elapsedTime) % 60
        let centiSecond = Int(elapsedTime * 100) % 100

        self.init(
            format: "%02d:%02d.%02d",
            minute,
            second,
            centiSecond
        )
    }
}
