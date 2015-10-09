.class public Landroid/content/UndoOwner;
.super Ljava/lang/Object;
.source "UndoOwner.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mManager:Landroid/content/UndoManager;

.field mOpCount:I

.field mSavedIdx:I

.field mStateSeq:I

.field final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    return-object v0
.end method
