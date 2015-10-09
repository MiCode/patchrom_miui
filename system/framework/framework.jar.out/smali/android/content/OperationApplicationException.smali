.class public Landroid/content/OperationApplicationException;
.super Ljava/lang/Exception;
.source "OperationApplicationException.java"


# instance fields
.field private final mNumSuccessfulYieldPoints:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numSuccessfulYieldPoints"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput p1, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "numSuccessfulYieldPoints"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    iput p2, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    .line 41
    return-void
.end method


# virtual methods
.method public getNumSuccessfulYieldPoints()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/content/OperationApplicationException;->mNumSuccessfulYieldPoints:I

    return v0
.end method
