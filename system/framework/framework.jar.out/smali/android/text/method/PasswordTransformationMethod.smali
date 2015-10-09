.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static DOT:C

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x2022

    sput-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic access$100()C
    .locals 1

    .prologue
    .line 35
    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 68
    :goto_0
    return-object v0

    .line 67
    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 68
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    goto :goto_0
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 5
    .param p0, "sp"    # Landroid/text/Spannable;

    .prologue
    .line 133
    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {p0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 134
    .local v1, "old":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 135
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 118
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 74
    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 39
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 40
    check-cast v1, Landroid/text/Spannable;

    .line 48
    .local v1, "sp":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 50
    .local v2, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 51
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 56
    new-instance v3, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-direct {v3, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    const/16 v4, 0x22

    invoke-interface {v1, v3, v5, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .end local v0    # "i":I
    .end local v1    # "sp":Landroid/text/Spannable;
    .end local v2    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    new-instance v3, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {v3, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 123
    if-nez p3, :cond_0

    .line 124
    instance-of v1, p2, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 125
    check-cast v0, Landroid/text/Spannable;

    .line 127
    .local v0, "sp":Landroid/text/Spannable;
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 130
    .end local v0    # "sp":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 78
    instance-of v5, p1, Landroid/text/Spannable;

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 79
    check-cast v2, Landroid/text/Spannable;

    .line 80
    .local v2, "sp":Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 82
    .local v4, "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    array-length v5, v4

    if-nez v5, :cond_1

    .line 114
    .end local v2    # "sp":Landroid/text/Spannable;
    .end local v4    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v2    # "sp":Landroid/text/Spannable;
    .restart local v4    # "vr":[Landroid/text/method/PasswordTransformationMethod$ViewReference;
    :cond_1
    const/4 v3, 0x0

    .line 94
    .local v3, "v":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-nez v3, :cond_2

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 95
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/text/method/PasswordTransformationMethod$ViewReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "v":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 94
    .restart local v3    # "v":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_2
    if-eqz v3, :cond_0

    .line 102
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v1

    .line 103
    .local v1, "pref":I
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_0

    .line 104
    if-lez p4, :cond_0

    .line 105
    invoke-static {v2}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 107
    const/4 v5, 0x1

    if-ne p4, v5, :cond_0

    .line 108
    new-instance v5, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-direct {v5, v2, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    add-int v6, p2, p4

    const/16 v7, 0x21

    invoke-interface {v2, v5, p2, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
