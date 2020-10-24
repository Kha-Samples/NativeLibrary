package;

import kha.Assets;
import kha.Scheduler;
import kha.System;

@:headerCode('
#include <test.h>
')

class Main {
	@:functionCode('return add(a, b);')
	static function nativeAdd(a: Int, b: Int): Int {
		return 0;
	}

	static function update(): Void {
		trace(nativeAdd(1, 2));
	}

	public static function main() {
		System.start({title: "Project", width: 1024, height: 768}, function (_) {
			Assets.loadEverything(function () {
				Scheduler.addTimeTask(function () { update(); }, 0, 1 / 60);
			});
		});
	}
}
