package model;

import javax.persistence.*;

@Entity
public class FileData {
 
    @Id
    @Column(name="fid",length = 30)
    private String file_id;
    
    @Column(name="fname",length = 300)
    private String file_name;
    
    @Column(name="filepath", length = 300)
    private String file_path;
    
    @Column(name="datecreate", length = 150)
    private String date_create;

    public String getFile_id() {
        return file_id;
    }

    public void setFile_id(String file_id) {
        this.file_id = file_id;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getFile_path() {
        return file_path;
    }

    public void setFile_path(String file_path) {
        this.file_path = file_path;
    }

    public String getDate_create() {
        return date_create;
    }

    public void setDate_create(String date_create) {
        this.date_create = date_create;
    }
    
    
}
