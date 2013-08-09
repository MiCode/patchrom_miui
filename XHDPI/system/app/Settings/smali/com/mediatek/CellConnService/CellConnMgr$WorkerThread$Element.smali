.class Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Element"
.end annotation


# instance fields
.field private mReqType:I

.field private mSlot:I

.field final synthetic this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;


# direct methods
.method public constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;II)V
    .locals 0
    .parameter
    .parameter "slot"
    .parameter "reqType"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p2, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    .line 290
    iput p3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    .line 291
    return-void
.end method


# virtual methods
.method public getReqType()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    return v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    return v0
.end method
