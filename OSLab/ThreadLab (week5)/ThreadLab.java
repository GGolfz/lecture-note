import java.util.Scanner;
public class ThreadLab {

	public static void main(String[] args) {
		// try {
		// Thread th1 = new MyThreadManager(1,500000000);
		// Thread th2 = new MyThreadManager(500000001,1000000000);
		// Thread th3 = new MyThreadManager(1000000001,1500000000);
		// Thread th4 = new MyThreadManager(1500000001,2000000000);
		// long serialAnswer = 0;
		// long serialStartTime = System.nanoTime();
		// for(long i = 1 ; i<= 2000000000;i++){
		// 	serialAnswer += i;
		// }
		// long serialEndTime = System.nanoTime();
		// System.out.println(serialAnswer);
		// System.out.println("Serial: "+(serialEndTime - serialStartTime));

		// long parallelStartTime = System.nanoTime();
		// th1.start(); th2.start(); th3.start(); th4.start();
		// th1.join(); th2.join(); th3.join(); th4.join();
		// long parallelAnswer = ((MyThreadManager) th1).sum + ((MyThreadManager) th2).sum + ((MyThreadManager) th3).sum + ((MyThreadManager) th4).sum;

		// long parallelEndTime = System.nanoTime();
		// System.out.println(parallelAnswer);
		// System.out.println("Parallel: "+(parallelEndTime - parallelStartTime));
		// } catch(Exception ex) {
		// 	ex.printStackTrace();
		// }
		try {
			Scanner sc = new Scanner(System.in);
			int x = sc.nextInt();
			long maxI = 10000000;
			Thread th1 = new MyThreadManager2(1,maxI,0,"Summation");
			Thread th2 = new MyThreadManager2(1,x,1,"Power");
			Thread th3 = new MyThreadManager2(1,x,0,"Fibonacci");
			th1.start(); th2.start(); th3.start();
			th1.join(); th2.join(); th3.join();
			long result = (x * ((MyThreadManager2) th1).value )+ ((MyThreadManager2) th2).value - ((MyThreadManager2) th3).value;
			System.out.println("Sum 1 to 10000000 is "+ ((MyThreadManager2) th1).value);
			System.out.println("2 powered by 10x is "+ ((MyThreadManager2) th2).value);
			System.out.println("Fibonacci at x is "+ ((MyThreadManager2) th3).value);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}