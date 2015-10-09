.class public Landroid/drm/DrmInfoEvent;
.super Landroid/drm/DrmEvent;
.source "DrmInfoEvent.java"


# static fields
.field public static final TYPE_ACCOUNT_ALREADY_REGISTERED:I = 0x5

.field public static final TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT:I = 0x1

.field public static final TYPE_REMOVE_RIGHTS:I = 0x2

.field public static final TYPE_RIGHTS_INSTALLED:I = 0x3

.field public static final TYPE_RIGHTS_REMOVED:I = 0x6

.field public static final TYPE_WAIT_FOR_RIGHTS:I = 0x4


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 74
    invoke-direct {p0, p2}, Landroid/drm/DrmInfoEvent;->checkTypeValidity(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "uniqueId"    # I
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 90
    invoke-direct {p0, p2}, Landroid/drm/DrmInfoEvent;->checkTypeValidity(I)V

    .line 91
    return-void
.end method

.method private checkTypeValidity(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 99
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x6

    if-le p1, v1, :cond_1

    .line 102
    :cond_0
    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method
