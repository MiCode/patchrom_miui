.class public Lcom/lbe/security/service/sdkhelper/SDKConstants;
.super Ljava/lang/Object;
.source "SDKConstants.java"


# static fields
.field public static final PERM_FILTER_HIPS:[I

.field public static final PERM_FILTER_NETWORK:[I

.field public static final PERM_FILTER_ROOT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lbe/security/service/sdkhelper/SDKConstants;->PERM_FILTER_HIPS:[I

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x200

    aput v2, v0, v1

    sput-object v0, Lcom/lbe/security/service/sdkhelper/SDKConstants;->PERM_FILTER_ROOT:[I

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lbe/security/service/sdkhelper/SDKConstants;->PERM_FILTER_NETWORK:[I

    .line 3
    return-void

    .line 135
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
    .end array-data

    .line 143
    :array_1
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
