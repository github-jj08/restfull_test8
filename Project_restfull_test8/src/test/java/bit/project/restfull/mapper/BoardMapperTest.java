package bit.project.restfull.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import bit.project.restfull.vo.BoardVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")	//�긦 ���ؼ� dataSource�� �������°��̴ϱ� boardMapper�� �����������������
@Log4j
public class BoardMapperTest {

	//@Autowired�� �ǰ� @Inject�� �ǰ�. �Ʒ��� �Һ��̸� Ȱ���Ѱ�. boardMapper�� ���� ���� �Լ��� �����Ѵ�.
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	//DAO�� �׽�Ʈ�ϱ����ؼ��� Ŀ�ؼ�Ǯ���� ������ �ͼ� DB �����ؾߵǴϱ�...Ŀ�ؼ� Ǯ�� ���� ������ ������ �;��Ѵ�. �� ������ ����ֳĸ� --> root-context.xml�� dataSource. 
	/* �̺κ��� ���Ѵ�.
	 * <!-- HikariCP configuration --> <bean id="dataSource"
	 * class="com.zaxxer.hikari.HikariDataSource" destroy-method="close">
	 * <constructor-arg ref="hikariConfig" /> </bean>
	 * �������� ���� @ContextConfiguration�� ���ذ���.
	 */
	
	@Test
	public void testBoardMapper() {
		log.info(boardMapper);	//����� ���� �ȵǾ����� null�� ����
	}
	
	@Test
	public void testBoardMapperList() {
		List<BoardVO> list = boardMapper.getBoardList();
		
		for(BoardVO vo : list) {
			log.info(vo.getbName());
		}
	}

}
