.class public Landroid/widget/SimpleExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SimpleExpandableListAdapter.java"


# instance fields
.field private mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private mChildFrom:[Ljava/lang/String;

.field private mChildLayout:I

.field private mChildTo:[I

.field private mCollapsedGroupLayout:I

.field private mExpandedGroupLayout:I

.field private mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mGroupFrom:[Ljava/lang/String;

.field private mGroupTo:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastChildLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "expandedGroupLayout"    # I
    .param p4, "collapsedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p8, "childLayout"    # I
    .param p9, "lastChildLayout"    # I
    .param p10, "childFrom"    # [Ljava/lang/String;
    .param p11, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;II[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;II[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p7, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 198
    iput-object p2, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    .line 199
    iput p3, p0, Landroid/widget/SimpleExpandableListAdapter;->mExpandedGroupLayout:I

    .line 200
    iput p4, p0, Landroid/widget/SimpleExpandableListAdapter;->mCollapsedGroupLayout:I

    .line 201
    iput-object p5, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupFrom:[Ljava/lang/String;

    .line 202
    iput-object p6, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupTo:[I

    .line 204
    iput-object p7, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    .line 205
    iput p8, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildLayout:I

    .line 206
    iput p9, p0, Landroid/widget/SimpleExpandableListAdapter;->mLastChildLayout:I

    .line 207
    iput-object p10, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildFrom:[Ljava/lang/String;

    .line 208
    iput-object p11, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildTo:[I

    .line 210
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "expandedGroupLayout"    # I
    .param p4, "collapsedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p8, "childLayout"    # I
    .param p9, "childFrom"    # [Ljava/lang/String;
    .param p10, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;II[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p7, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "groupLayout"    # I
    .param p4, "groupFrom"    # [Ljava/lang/String;
    .param p5, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "childFrom"    # [Ljava/lang/String;
    .param p9, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p6, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V

    .line 97
    return-void
.end method

.method private bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p3, "from"    # [Ljava/lang/String;
    .param p4, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    array-length v1, p4

    .line 246
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 247
    aget v3, p4, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 248
    .local v2, "v":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 249
    aget-object v3, p3, v0

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_1
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 214
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 218
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 224
    if-nez p4, :cond_0

    .line 225
    invoke-virtual {p0, p3, p5}, Landroid/widget/SimpleExpandableListAdapter;->newChildView(ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildFrom:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildTo:[I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/SimpleExpandableListAdapter;->bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[I)V

    .line 230
    return-object v0

    .line 227
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p4

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 259
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 267
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 273
    if-nez p3, :cond_0

    .line 274
    invoke-virtual {p0, p2, p4}, Landroid/widget/SimpleExpandableListAdapter;->newGroupView(ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupFrom:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupTo:[I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/SimpleExpandableListAdapter;->bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[I)V

    .line 279
    return-object v0

    .line 276
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public newChildView(ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "isLastChild"    # Z
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    iget-object v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mLastChildLayout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildLayout:I

    goto :goto_0
.end method

.method public newGroupView(ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "isExpanded"    # Z
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 289
    iget-object v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mExpandedGroupLayout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mCollapsedGroupLayout:I

    goto :goto_0
.end method
