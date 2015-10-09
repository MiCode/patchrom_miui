.class Landroid/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 2117
    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Landroid/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2117
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2117
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2123
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2124
    return-void
.end method
