.class Landroid/content/pm/RegisteredServicesCache$UserServices;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final persistentServices:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServicesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TV;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/RegisteredServicesCache$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/pm/RegisteredServicesCache$1;

    .prologue
    .line 87
    .local p0, "this":Landroid/content/pm/RegisteredServicesCache$UserServices;, "Landroid/content/pm/RegisteredServicesCache$UserServices<TV;>;"
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>()V

    return-void
.end method
