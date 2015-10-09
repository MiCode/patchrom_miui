.class Landroid/inputmethodservice/KeyboardView$3;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1101
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    # invokes: Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$1400(Landroid/inputmethodservice/KeyboardView;)V

    .line 1102
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1115
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1117
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1118
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    # invokes: Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$1400(Landroid/inputmethodservice/KeyboardView;)V

    .line 1107
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1110
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1111
    return-void
.end method
