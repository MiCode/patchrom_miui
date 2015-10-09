.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private mOrigin:Ljava/lang/String;

.field private mQuota:J

.field private mUsage:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 64
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 65
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 82
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 64
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 65
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 76
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 77
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 78
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .param p4, "usage"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 64
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 65
    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 69
    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    .line 71
    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    .line 72
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
