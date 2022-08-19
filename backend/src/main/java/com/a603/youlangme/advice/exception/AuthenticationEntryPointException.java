package com.a603.youlangme.advice.exception;

public class AuthenticationEntryPointException extends RuntimeException{
    public AuthenticationEntryPointException() {
    }

    public AuthenticationEntryPointException(String message) {
        super(message);
    }

    public AuthenticationEntryPointException(String message, Throwable cause) {
        super(message, cause);
    }
}
