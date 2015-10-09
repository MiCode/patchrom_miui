.class Landroid/renderscript/Mesh$AllocationBuilder$Entry;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh$AllocationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field a:Landroid/renderscript/Allocation;

.field prim:Landroid/renderscript/Mesh$Primitive;

.field final synthetic this$0:Landroid/renderscript/Mesh$AllocationBuilder;


# direct methods
.method constructor <init>(Landroid/renderscript/Mesh$AllocationBuilder;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->this$0:Landroid/renderscript/Mesh$AllocationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
