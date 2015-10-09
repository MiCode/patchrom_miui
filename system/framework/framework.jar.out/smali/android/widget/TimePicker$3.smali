.class Landroid/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->updateInputState()V
    invoke-static {v5}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)V

    .line 184
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .line 185
    .local v1, "minValue":I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .line 186
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 187
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 188
    .local v2, "newHour":I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 189
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;Z)Z

    .line 190
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 192
    :cond_0
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 201
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    .line 202
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 189
    goto :goto_0

    .line 193
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 194
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 195
    .restart local v2    # "newHour":I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 196
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;Z)Z

    .line 197
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # invokes: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 199
    :cond_4
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    # getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 196
    goto :goto_2
.end method
