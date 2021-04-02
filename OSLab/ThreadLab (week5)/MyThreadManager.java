public class MyThreadManager extends Thread {
	long start, end;
	long sum = 0;
	public MyThreadManager(long start,long end){
		this.start = start;
		this.end = end;
	}
	@Override
	public void run() {
		for(long i = this.start ; i <= this.end ; i++) {
			sum += i;
		}
	}
}