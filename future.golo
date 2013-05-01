module future

import java.util.concurrent.Callable

import java.lang.Math
import java.util.Random

import java.util.ArrayList
import java.util.concurrent.ExecutionException
import java.util.concurrent.Future
import java.util.concurrent.FutureTask

import java.lang.Thread

import dynogolo

function StringGenerator = -> DynamicProxy(
		(->null):to(Callable.class),
		DynamicObject()
			:call(|this| {
				let allStrings = Array(
					"Apple", "Ball", "Cat", 
					"Dog", "Elephant", "Flower", 
					"Grape", "Horse", "Ink",
					"Joker"
				)

				let index = Random(): nextInt(10)
				Thread.sleep(2000_L)

				println("Computed ----> "+allStrings:get(index))

				return	allStrings:get(index)
			})	
	)



function main = |args| {

	let results = ArrayList()

	foreach (i in range(1, 50)) {
		
		let task = FutureTask(StringGenerator())
		results:add(task)

		Thread(task):start()
	}

	foreach(result in results) {
		println("Result is : " + result:get())
	}

}



