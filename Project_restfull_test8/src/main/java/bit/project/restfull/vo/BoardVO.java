package bit.project.restfull.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	
	private int board_numbers;
	private String title;	
	private String contents;
	private String hit;
	private Timestamp dates;
	private String member_id;
	private int boardlist_numbers;
	private String boardName;
	private int filter_numbers;
	private String filterName;
	private String location;
	private DestinationVO destinationVO;		//������ �ּ� ���� ��ü locationVO�� location_name = location
	//private AttachmentVO attachmentVO;	//÷������ ���� ��ü
	private String thumbnail;
	
}
