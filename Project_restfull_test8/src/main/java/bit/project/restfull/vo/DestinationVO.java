package bit.project.restfull.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class DestinationVO {
	private String jibunaddress;
	private String doroaddress;
	private String details;
	private String lat;	
	private String lng;
	private int sigungu_code;
	private String destination_name;
	private SidoguVO sidoguVO;
}
