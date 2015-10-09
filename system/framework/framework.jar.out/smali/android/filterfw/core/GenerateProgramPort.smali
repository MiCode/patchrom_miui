.class public interface abstract annotation Landroid/filterfw/core/GenerateProgramPort;
.super Ljava/lang/Object;
.source "GenerateProgramPort.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/filterfw/core/GenerateProgramPort;
        hasDefault = false
        variableName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract hasDefault()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/Class;
.end method

.method public abstract variableName()Ljava/lang/String;
.end method
