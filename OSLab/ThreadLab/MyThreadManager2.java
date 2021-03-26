public class MyThreadManager2 extends Thread {
	long start, end, value;
	String type;
	public MyThreadManager2(long start, long end, long value, String type){
		this.start = start;
		this.end = end;
		this.type = type;
		this.value = value;
	}
	@Override
	public void run() {
		switch (type) {
			case "Summation":
				for(long i = this.start ; i <= this.end ; i++) {
					this.value += i;
				}
				break;
			case "Power":
				for(long i = this.start; i<= 10 * this.end;i++){
					this.value *= 2;
				}
				System.out.println(this.value);
				break;
			case "Fibonacci":
				if(this.end == 0 || this.end == 1){
					this.value = this.end;
				} else {
					long prev2 = 0, prev1 = 1;
					for(long i = 2 ; i<= this.end;i++){
						this.value = prev2 + prev1;
						prev2 = prev1;
						prev1 = this.value;
					}
				}
				break;
			default:
				break;
		}
		
	}
}