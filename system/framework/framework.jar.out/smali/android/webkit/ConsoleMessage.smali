.class public Landroid/webkit/ConsoleMessage;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ConsoleMessage$MessageLevel;
    }
.end annotation


# instance fields
.field private mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

.field private mLineNumber:I

.field private mMessage:Ljava/lang/String;

.field private mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "msgLevel"    # Landroid/webkit/ConsoleMessage$MessageLevel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    .line 45
    iput p3, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    .line 46
    iput-object p4, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 47
    return-void
.end method


# virtual methods
.method public lineNumber()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method
