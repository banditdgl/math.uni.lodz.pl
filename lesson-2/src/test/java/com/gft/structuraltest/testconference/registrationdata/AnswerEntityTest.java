package com.gft.structuraltest.testconference.registrationdata;

import static org.junit.Assert.*;
import org.junit.*;

public class AnswerEntityTest{

    @Test
    public void shouldReturnFalseWhenObjectIsNull(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = null;
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnTrueWhenObjectIsEqualToItself(){
        AnswerEntity an1 = new AnswerEntity();
        assertTrue(an1.equals(an1));
    }
    
    @Test
    public void shouldReturnFalseWhenObjectHasDifferentClass(){
        AnswerEntity an1 = new AnswerEntity();
        QuestionEntity qn1 = new QuestionEntity();
        assertFalse(an1.equals(qn1));
    }
    
    @Test
    public void shouldReturnFalseWhenFirstObjectsAnswerTextIsNullAndSecondObjectsAnswerTextIsNotNull(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        an2.setAnswerText("answer");
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnFalseWhenObjectsTextsAreNotEqual(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        an1.setAnswerText("answer1");
        an2.setAnswerText("answer2");
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnFalseWhenFirstObjectIdIsNullAndSecondObjectIdIsNotNull(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        an2.setId(2l);
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnFalseWhenObjectsIdsAreNotEqual(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        an1.setId(1l);
        an2.setId(2l);
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnFalseWhenFirstObjectQuestionIsNullAndSecondObjectQuestionIsNotNull(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        an2.setQuestion(new QuestionEntity());
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnFalseWhenObjectsHaveDifferentQuestions(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        an1.setQuestion(new QuestionEntity());
        an2.setQuestion(new QuestionEntity());
        assertFalse(an1.equals(an2));
    }
    
    @Test
    public void shouldReturnTrueWhenTwoDifferentObjectsAreEqual(){
        AnswerEntity an1 = new AnswerEntity();
        AnswerEntity an2 = new AnswerEntity();
        assertTrue(an1.equals(an2));
    }
    
    
    
}