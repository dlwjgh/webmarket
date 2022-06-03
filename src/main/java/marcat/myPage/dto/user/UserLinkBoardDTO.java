package marcat.myPage.dto.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserLinkBoardDTO {
    private Long id;
    private String uId;
    private String nickName;
    private String addr;
    private String savedFileName;
    private Long boardId;
    private String title;
    private String viewCount;
    private String createTime;
}
