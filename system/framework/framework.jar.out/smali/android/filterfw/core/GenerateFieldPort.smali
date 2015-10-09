.class public interface abstract annotation Landroid/filterfw/core/GenerateFieldPort;
.super Ljava/lang/Object;
.source "GenerateFieldPort.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = false
        name = ""
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
