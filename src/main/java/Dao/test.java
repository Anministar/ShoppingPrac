package Dao;
public class test {
	
	private String name;
	private String age;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	
	
	
	
	
	
	public void 이동하() {
		System.out.println("이동하입니다.");
	}
	
	public static void main(String[] args) {
		
		//useBean을 사용하면 == 객체를 형성하지 않아도 된다.
				
		
		
		test 이동하 = new test(); 객체형성  ==> use bean
		//이름이 ""
		//나이도 ""
		
		
		이동하.setName("이동하");  값설정==> setproperty
		//이름이 이동하
		
		
		이동하.setAge("24"); 값설정==> setproperty
		//나이가 24
		
		
		
		System.out.println(이동하.getName());
		//이름를 불러오고
		System.out.println(이동하.getAge());
		//나이를 불러오고
		
		
		
	}
	
	
	

}
