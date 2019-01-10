package com.rjxy.fitness.entity;

import java.util.Date;
import java.util.List;

public class Space {
    private String id;

    private String spaceid;
   
    private String content;

    private Date createdate;

    private String replynum;
    
    private Fitnessuser fitnessuser;
    
    private List<Fitnessuser> fitnessuserList;
    
    public Fitnessuser getFitnessuser() {
		return fitnessuser;
	}

	public void setFitnessuser(Fitnessuser fitnessuser) {
		this.fitnessuser = fitnessuser;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSpaceid() {
        return spaceid;
    }

    public void setSpaceid(String spaceid) {
        this.spaceid = spaceid == null ? null : spaceid.trim();
    }
    
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
    
    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getReplynum() {
        return replynum;
    }

    public void setReplynum(String replynum) {
        this.replynum = replynum == null ? null : replynum.trim();
    }

	@Override
	public String toString() {
		return "Space [id=" + id + ", spaceid=" + spaceid + ", content=" + content + ", createdate=" + createdate
				+ ", replynum=" + replynum + "]";
	}

	public Space(String id, String spaceid, String content, Date createdate, String replynum, Fitnessuser fitnessuser) {
		super();
		this.id = id;
		this.spaceid = spaceid;
		this.content = content;
		this.createdate = createdate;
		this.replynum = replynum;
		this.fitnessuser = fitnessuser;
	}

	public Space() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Fitnessuser> getFitnessuserList() {
		return fitnessuserList;
	}

	public void setFitnessuserList(List<Fitnessuser> fitnessuserList) {
		this.fitnessuserList = fitnessuserList;
	}

    
}
