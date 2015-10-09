.class Landroid/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 9
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 179
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)V

    .line 180
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 183
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 184
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 185
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 205
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Landroid/widget/DatePicker;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;III)V

    .line 207
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateSpinners()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)V

    .line 208
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->updateCalendarView()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;)V

    .line 209
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # invokes: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v1}, Landroid/widget/DatePicker;->access$900(Landroid/widget/DatePicker;)V

    .line 210
    return-void

    .line 186
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 187
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 191
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 192
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 193
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 194
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 195
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 199
    :cond_5
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 200
    iget-object v1, p0, Landroid/widget/DatePicker$1;->this$0:Landroid/widget/DatePicker;

    # getter for: Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 202
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
