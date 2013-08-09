.class public Lcom/mediatek/gemini/GeminiSIMTetherItem;
.super Ljava/lang/Object;
.source "GeminiSIMTetherItem.java"


# instance fields
.field private mCheckedStatus:I

.field private mContactId:I

.field private mName:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mPhoneNumType:Ljava/lang/String;

.field private mSimColor:I

.field private mSimName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    .line 46
    return-void
.end method


# virtual methods
.method public getCheckedStatus()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    return v0
.end method

.method public getContactId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mContactId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNumType:Ljava/lang/String;

    return-object v0
.end method

.method public getSimColor()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    return v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimName:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckedStatus(I)V
    .locals 0
    .parameter "checkedStatus"

    .prologue
    .line 179
    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    .line 180
    return-void
.end method

.method public setContactId(I)V
    .locals 0
    .parameter "contactId"

    .prologue
    .line 35
    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mContactId:I

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNum"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setSimColor(I)V
    .locals 0
    .parameter "simColor"

    .prologue
    .line 160
    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    .line 161
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "simName"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimName:Ljava/lang/String;

    .line 199
    return-void
.end method
