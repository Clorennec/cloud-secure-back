package com.example.delivcrous;

import com.example.delivcrous.controller.*;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JerseyConfig extends ResourceConfig {
    public JerseyConfig() {
        register(UtilisateurController.class);
        register(PlatPanierController.class);
        register(PlatController.class);
        register(PlatCommandeController.class);
        register(PanierController.class);
        register(CommandeController.class);
        register(AllergeneController.class);
    }
}
