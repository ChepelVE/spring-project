package org.sweater.domain.util;

import org.sweater.domain.User;

public abstract class MessageHelper {
    public static String getAuthorName(User user) {
        return user != null ? user.getUsername() : "<none>";
    }
}
