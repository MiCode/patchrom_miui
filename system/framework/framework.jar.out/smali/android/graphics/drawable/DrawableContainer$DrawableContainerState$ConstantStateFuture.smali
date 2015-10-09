.class Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;
.super Ljava/lang/Object;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantStateFuture"
.end annotation


# instance fields
.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "source"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 873
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/DrawableContainer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x1"    # Landroid/graphics/drawable/DrawableContainer$1;

    .prologue
    .line 868
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    .line 882
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 884
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 885
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 887
    iget-boolean v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 891
    :cond_0
    return-object v0

    .line 882
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
