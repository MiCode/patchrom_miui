.class public Landroid/gesture/GesturePoint;
.super Ljava/lang/Object;
.source "GesturePoint.java"


# instance fields
.field public final timestamp:J

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "t"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/gesture/GesturePoint;->x:F

    .line 34
    iput p2, p0, Landroid/gesture/GesturePoint;->y:F

    .line 35
    iput-wide p3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    .line 36
    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 41
    .local v2, "x":F
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 43
    .local v3, "y":F
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 44
    .local v0, "timeStamp":J
    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 49
    new-instance v0, Landroid/gesture/GesturePoint;

    iget v1, p0, Landroid/gesture/GesturePoint;->x:F

    iget v2, p0, Landroid/gesture/GesturePoint;->y:F

    iget-wide v3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object v0
.end method
