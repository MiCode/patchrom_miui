.class Landroid/widget/ActivityChooserView$5;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Landroid/widget/ActivityChooserView$5;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 275
    iget-object v0, p0, Landroid/widget/ActivityChooserView$5;->this$0:Landroid/widget/ActivityChooserView;

    # invokes: Landroid/widget/ActivityChooserView;->updateAppearance()V
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$400(Landroid/widget/ActivityChooserView;)V

    .line 276
    return-void
.end method
