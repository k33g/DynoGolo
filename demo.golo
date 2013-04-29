module demo

import dynogolo

import org.k33g.TinyToon


function main = |args| {

	let buster = DynamicProxy(
		TinyToon("Buster"), 
		DynamicObject()
			:hello(|this, args| {
				println("===> " + args:get(0))
				println(this:realSubject():hello(args:get(0)))
			})
			:speak(|this, args| {
				println("===> " + args:get(0))
                println(this:realSubject():speak(args:get(0)))
			})
	)

	println(buster:hello("HI !!!"))
	println(buster:speak("IT'S SO CUTE"))

}



