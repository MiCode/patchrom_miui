.class public final Landroid/renderscript/Script$FieldID;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
.end annotation


# instance fields
.field mScript:Landroid/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "s"    # Landroid/renderscript/Script;
    .param p4, "slot"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 80
    iput-object p3, p0, Landroid/renderscript/Script$FieldID;->mScript:Landroid/renderscript/Script;

    .line 81
    iput p4, p0, Landroid/renderscript/Script$FieldID;->mSlot:I

    .line 82
    return-void
.end method
