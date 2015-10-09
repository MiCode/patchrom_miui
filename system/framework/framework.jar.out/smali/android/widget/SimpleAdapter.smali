.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$1;,
        Landroid/widget/SimpleAdapter$SimpleFilter;,
        Landroid/widget/SimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
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

.field private mDropDownResource:I

.field private mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
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
            "[I)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 81
    iput-object p2, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    .line 82
    iput p3, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    iput p3, p0, Landroid/widget/SimpleAdapter;->mResource:I

    .line 83
    iput-object p4, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 84
    iput-object p5, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/SimpleAdapter;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v10, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 148
    .local v4, "dataSet":Ljava/util/Map;
    if-nez v4, :cond_1

    .line 201
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 153
    .local v0, "binder":Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v5, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 154
    .local v5, "from":[Ljava/lang/String;
    iget-object v8, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    .line 155
    .local v8, "to":[I
    array-length v2, v8

    .line 157
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 158
    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 159
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 160
    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 161
    .local v3, "data":Ljava/lang/Object;
    if-nez v3, :cond_5

    const-string v7, ""

    .line 162
    .local v7, "text":Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_2

    .line 163
    const-string v7, ""

    .line 166
    :cond_2
    const/4 v1, 0x0

    .line 167
    .local v1, "bound":Z
    if-eqz v0, :cond_3

    .line 168
    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 171
    :cond_3
    if-nez v1, :cond_4

    .line 172
    instance-of v10, v9, Landroid/widget/Checkable;

    if-eqz v10, :cond_9

    .line 173
    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    .line 174
    check-cast v9, Landroid/widget/Checkable;

    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 157
    .end local v1    # "bound":Z
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 175
    .restart local v1    # "bound":Z
    .restart local v7    # "text":Ljava/lang/String;
    :cond_6
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_7

    .line 178
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 180
    .restart local v9    # "v":Landroid/view/View;
    :cond_7
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_8

    const-string v10, "<unknown type>"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_3

    .line 184
    :cond_9
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_a

    .line 187
    check-cast v9, Landroid/widget/TextView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 188
    .restart local v9    # "v":Landroid/view/View;
    :cond_a
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_c

    .line 189
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_b

    .line 190
    check-cast v9, Landroid/widget/ImageView;

    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 192
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_b
    check-cast v9, Landroid/widget/ImageView;

    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 195
    .restart local v9    # "v":Landroid/view/View;
    :cond_c
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleAdapter;->bindView(ILandroid/view/View;)V

    .line 128
    return-object v0

    .line 123
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 143
    iget v0, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    iget v0, p0, Landroid/widget/SimpleAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .param p1, "resource"    # I

    .prologue
    .line 138
    iput p1, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    .line 139
    return-void
.end method

.method public setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Landroid/widget/SimpleAdapter$ViewBinder;

    .prologue
    .line 223
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 224
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # I

    .prologue
    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method
