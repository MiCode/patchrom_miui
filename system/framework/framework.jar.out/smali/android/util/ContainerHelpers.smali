.class Landroid/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_BOOLEANS:[Z

.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [Z

    sput-object v0, Landroid/util/ContainerHelpers;->EMPTY_BOOLEANS:[Z

    .line 21
    new-array v0, v1, [I

    sput-object v0, Landroid/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 22
    new-array v0, v1, [J

    sput-object v0, Landroid/util/ContainerHelpers;->EMPTY_LONGS:[J

    .line 23
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 30
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 31
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 32
    .local v2, "mid":I
    aget v3, p0, v2

    .line 34
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 35
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    if-le v3, p2, :cond_2

    .line 37
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 42
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method static binarySearch([JIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 49
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 50
    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    .line 51
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 53
    .local v3, "midVal":J
    cmp-long v5, v3, p2

    if-gez v5, :cond_0

    .line 54
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    cmp-long v5, v3, p2

    if-lez v5, :cond_2

    .line 56
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 61
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method
