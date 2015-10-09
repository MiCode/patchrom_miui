.class Landroid/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/RadioGroup;
    .param p2, "x1"    # Landroid/widget/RadioGroup$1;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    # getter for: Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1}, Landroid/widget/RadioGroup;->access$300(Landroid/widget/RadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    const/4 v2, 0x1

    # setter for: Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v2}, Landroid/widget/RadioGroup;->access$302(Landroid/widget/RadioGroup;Z)Z

    .line 352
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    # getter for: Landroid/widget/RadioGroup;->mCheckedId:I
    invoke-static {v1}, Landroid/widget/RadioGroup;->access$400(Landroid/widget/RadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 353
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    iget-object v2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    # getter for: Landroid/widget/RadioGroup;->mCheckedId:I
    invoke-static {v2}, Landroid/widget/RadioGroup;->access$400(Landroid/widget/RadioGroup;)I

    move-result v2

    # invokes: Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V
    invoke-static {v1, v2, v3}, Landroid/widget/RadioGroup;->access$500(Landroid/widget/RadioGroup;IZ)V

    .line 355
    :cond_1
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    # setter for: Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z
    invoke-static {v1, v3}, Landroid/widget/RadioGroup;->access$302(Landroid/widget/RadioGroup;Z)Z

    .line 357
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 358
    .local v0, "id":I
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    # invokes: Landroid/widget/RadioGroup;->setCheckedId(I)V
    invoke-static {v1, v0}, Landroid/widget/RadioGroup;->access$600(Landroid/widget/RadioGroup;I)V

    goto :goto_0
.end method
