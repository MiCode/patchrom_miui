.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field oldHealth:I

.field oldPlug:I

.field oldState:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2182
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 2183
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 2184
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 2185
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 2186
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 2187
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "now"    # J

    .prologue
    .line 2190
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p3

    const/16 v2, 0x13

    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 2192
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2194
    const-string v0, " START"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    :goto_0
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 2297
    return-void

    .line 2195
    :cond_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2196
    const-string v0, " *OVERFLOW*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2198
    :cond_1
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    :cond_2
    :goto_1
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2201
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_a

    const-string v0, "0000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    :cond_3
    :goto_2
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v0, v1, :cond_4

    .line 2211
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 2212
    const-string v0, " status="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v0, :pswitch_data_0

    .line 2230
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2234
    :cond_4
    :goto_3
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v0, v1, :cond_5

    .line 2235
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 2236
    const-string v0, " health="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2237
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v0, :pswitch_data_1

    .line 2257
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2261
    :cond_5
    :goto_4
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v0, v1, :cond_6

    .line 2262
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 2263
    const-string v0, " plug="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v0, :pswitch_data_2

    .line 2278
    :pswitch_0
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2282
    :cond_6
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-eq v0, v1, :cond_7

    .line 2283
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 2284
    const-string v0, " temp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2285
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2287
    :cond_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v0, v1, :cond_8

    .line 2288
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 2289
    const-string v0, " volt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2292
    :cond_8
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    sget-object v2, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-static {p1, v0, v1, v2}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V

    .line 2294
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 2199
    :cond_9
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2203
    :cond_a
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_b

    const-string v0, "000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2204
    :cond_b
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_c

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2205
    :cond_c
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_d

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2206
    :cond_d
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_e

    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2207
    :cond_e
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x1000000

    if-ge v0, v1, :cond_f

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2208
    :cond_f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_3

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2215
    :pswitch_1
    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2218
    :pswitch_2
    const-string v0, "charging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2221
    :pswitch_3
    const-string v0, "discharging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2224
    :pswitch_4
    const-string/jumbo v0, "not-charging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2227
    :pswitch_5
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2239
    :pswitch_6
    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2242
    :pswitch_7
    const-string v0, "good"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2245
    :pswitch_8
    const-string/jumbo v0, "overheat"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2248
    :pswitch_9
    const-string v0, "dead"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2251
    :pswitch_a
    const-string/jumbo v0, "over-voltage"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2254
    :pswitch_b
    const-string v0, "failure"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2266
    :pswitch_c
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2269
    :pswitch_d
    const-string v0, "ac"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2272
    :pswitch_e
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2275
    :pswitch_f
    const-string/jumbo v0, "wireless"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2237
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2264
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public printNextItemCheckin(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "now"    # J

    .prologue
    .line 2300
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2301
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2303
    const-string/jumbo v0, "start"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    :goto_0
    return-void

    .line 2304
    :cond_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2305
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2307
    :cond_1
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2308
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2309
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2310
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2311
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2312
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2313
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2314
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2315
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2316
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2318
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0
.end method
