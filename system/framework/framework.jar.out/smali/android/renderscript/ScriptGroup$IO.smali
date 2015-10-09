.class Landroid/renderscript/ScriptGroup$IO;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IO"
.end annotation


# instance fields
.field mAllocation:Landroid/renderscript/Allocation;

.field mKID:Landroid/renderscript/Script$KernelID;


# direct methods
.method constructor <init>(Landroid/renderscript/Script$KernelID;)V
    .locals 0
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    .line 55
    return-void
.end method
