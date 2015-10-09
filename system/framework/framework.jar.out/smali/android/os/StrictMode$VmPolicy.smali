.class public final Landroid/os/StrictMode$VmPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VmPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$VmPolicy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroid/os/StrictMode$VmPolicy;


# instance fields
.field final classInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 540
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    const/4 v1, 0x0

    # getter for: Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    invoke-static {}, Landroid/os/StrictMode;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;)V

    sput-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, "classInstanceLimit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    if-nez p2, :cond_0

    .line 549
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "classInstanceLimit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    iput p1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 552
    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    .line 553
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;Landroid/os/StrictMode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/HashMap;
    .param p3, "x2"    # Landroid/os/StrictMode$1;

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StrictMode.VmPolicy; mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
