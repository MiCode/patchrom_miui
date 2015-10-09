.class public Landroid/text/LoginFilter$UsernameFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGMail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 147
    const/16 v1, 0x30

    if-gt v1, p1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 151
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 153
    :cond_3
    const/16 v1, 0x2e

    if-eq v1, p1, :cond_0

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method
