/*
 * Copyright (C)2005-2013 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */
package haxe;

abstract Int64(Int64Data) from Int64Data to Int64Data
{
	inline function new(x:Int64Data) this = x;

	inline static function RAW(x:Int64Data):Int64 return new Int64(x);

	public static inline function make(a:Int, b:Int) {
		return RAW(Int64Data.make(a, b));
	}

	public inline function getHigh() {
		return Int64Data.getHigh(this);
	}
	
	public inline function getLow() {
		return Int64Data.getLow(this);
	}
	
	@:from public static inline function ofInt(x:Int):Int64 {
		return RAW(Int64Data.ofInt(x));
	}

	public inline function toInt():Int {
		return Int64Data.toInt(this);
	}

	@:op(A+B) public static inline function add(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.add(a, b));
	}

	@:op(A-B) public static inline function sub(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.sub(a, b));
	}

	@:op(-A) public static inline function neg(x:Int64):Int64 {
		return RAW(Int64Data.neg(x));
	}

	@:op(A*B) public static inline function mul(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.mul(a, b));
	}

	@:op(A/B) public static inline function div(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.div(a, b));
	}

	@:op(A % B) public static inline function mod(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.mod(a, b));
	}

	@:op(A==B) public static inline function eq(a:Int64, b:Int64):Bool {
		return Int64Data.compare(a, b) == 0;
	}

	@:op(A!=B) public static inline function neq(a:Int64, b:Int64):Bool {
		return Int64Data.compare(a, b) != 0;
	}

	@:op(A>B) public static inline function gt(a:Int64, b:Int64):Bool {
		return Int64Data.compare(a, b) > 0;
	}

	@:op(A<B) public static inline function lt(a:Int64, b:Int64):Bool {
		return Int64Data.compare(a, b) < 0;
	}

	@:op(A>=B) public static inline function gte(a:Int64, b:Int64):Bool {
		return Int64Data.compare(a, b) >= 0;
	}

	@:op(A<=B) public static inline function lte(a:Int64, b:Int64):Bool {
		return Int64Data.compare(a, b) <= 0;
	}

	@:op(A<<B) public static inline function shl(a:Int64, b:Int):Int64 {
		return RAW(Int64Data.shl(a, b));
	}

	@:op(A>>B) public static inline function shr(a:Int64, b:Int):Int64 {
		return RAW(Int64Data.shr(a, b));
	}

	@:op(A>>>B) public static inline function ushr(a:Int64, b:Int):Int64 {
		return RAW(Int64Data.ushr(a, b));
	}

	@:op(A&B) public static inline function and(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.and(a, b));
	}

	@:op(A|B) public static inline function or(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.or(a, b));
	}
	
	@:op(A^B) public static inline function xor(a:Int64, b:Int64):Int64 {
		return RAW(Int64Data.xor(a, b));
	}
	
	public static inline function compare(a:Int64, b:Int64):Int {
		return Int64Data.compare(a, b);
	}

	public inline function toString():String {
		return Int64Data.toStr(this);
	}
	
	public inline function toStr():String {
		return Int64Data.toStr(this);
	}
}
