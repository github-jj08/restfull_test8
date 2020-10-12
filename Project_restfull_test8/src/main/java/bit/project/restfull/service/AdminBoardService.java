package bit.project.restfull.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bit.project.restfull.vo.AdminBoardVO;
import bit.project.restfull.vo.AttachmentVO;
import bit.project.restfull.vo.BoardVO;
import bit.project.restfull.vo.DestinationVO;
import bit.project.restfull.vo.GoodsVO;
import bit.project.restfull.vo.LikesVO;
import bit.project.restfull.vo.SidoguVO;

public interface AdminBoardService {

	List<AdminBoardVO> getList(int boardlist_numbers);
	
	//관리자글
	AdminBoardVO getBoardVO(int board_numbers);
	List<AttachmentVO> getBoardAttachmentVO(int board_numbers);
	
	//관리자글 CRUD
	void writeBoardVO(MultipartFile[] uploadfiles, AdminBoardVO boardVO);
	void modifyBoardVO(AdminBoardVO boardVO);
	void deleteBoardVO(int board_numbers);

	//여행지 CRUD
	List<DestinationVO> getDestList();
	DestinationVO getDestVO(String destination_name);
	void writeDestVO(DestinationVO destinationVO);
	void modifyDestVO(DestinationVO destinationVO);
	void deleteDestVO(String destination_name);

	List<SidoguVO> getOptionList(int sicoCode);
	
	//상품 CRUD
	List<GoodsVO> getGoodsList(String destination_name);
	GoodsVO getGoodsVO(int goods_numbers);
	void writeGoodsVO(GoodsVO goodsVO);
	void modifyGoodsVO(GoodsVO goodsVO);
	void deleteGoodsVO(int goods_numbers);

	//여행지 Read - 여행코스짜기에서 사용함
	List<DestinationVO> getDestList(int sigungu_code);
	//관련 상품목록 Read
	List<GoodsVO> getRGoods(String[] destinations);
}
