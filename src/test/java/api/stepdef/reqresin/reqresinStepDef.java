package api.stepdef.reqresin;


import api.service.reqresin.Reqresin;
import io.cucumber.java.en.And;

public class reqresinStepDef {

    Reqresin reqresin = new Reqresin();

    // Action

    @And("user send PUT Update request to reqresin")
    public void putUpdate() {
        reqresin.putUpdate();
    }

    @And("user send POST login request to reqresin")
    public void postLogin() {
        reqresin.postLogin();
    }

    @And("user send POST register request to reqresin")
    public void postRegister() {
        reqresin.postRegister();
    }

    @And("user send POST invalid register request to reqresin")
    public void postInvalidRegister() {
        reqresin.postInvalidRegister();
    }

    @And("user send GET Users request to reqresin")
    public void getUsers() {
        reqresin.getListUser();
    }

    @And("user send DELETE delete request to reqresin")
    public void deleteUsers() {
        reqresin.deleteUsers();
    }
}