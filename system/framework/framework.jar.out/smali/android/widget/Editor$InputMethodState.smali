.class Landroid/widget/Editor$InputMethodState;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodState"
.end annotation


# instance fields
.field mBatchEditNesting:I

.field mChangedDelta:I

.field mChangedEnd:I

.field mChangedStart:I

.field mContentChanged:Z

.field mCursorChanged:Z

.field mCursorRectInWindow:Landroid/graphics/Rect;

.field final mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field mSelectionModeChanged:Z

.field mTmpOffset:[F

.field mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4466
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    .line 4467
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    .line 4468
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    .line 4470
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method
