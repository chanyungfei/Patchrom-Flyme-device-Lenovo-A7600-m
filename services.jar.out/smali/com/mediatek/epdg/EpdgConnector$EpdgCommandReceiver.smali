.class Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;
.super Ljava/lang/Object;
.source "EpdgConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCommandReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnector;


# direct methods
.method protected constructor <init>(Lcom/mediatek/epdg/EpdgConnector;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method


# virtual methods
.method protected handleEpdgCommand(Ljava/lang/String;)V
    .locals 19
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v2, "EpdgConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "process epdg RCV <- {:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v17, "woattach"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v17, "wohol"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v17, "wohow"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    :cond_0
    :try_start_0
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 325
    .local v15, "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 326
    .local v12, "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, "parsed":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v2, v0, :cond_1

    .line 329
    const-string v2, "EpdgConnector"

    const-string v17, "Wrong response"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :goto_0
    return-void

    .line 331
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_2

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 334
    .local v14, "failCause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v3    # "apn":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v14    # "failCause":I
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 369
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 340
    .local v4, "statusCode":I
    const-string v5, ""

    .line 341
    .local v5, "nwInterface":Ljava/lang/String;
    const-string v7, ""

    .line 342
    .local v7, "addrV6":Ljava/lang/String;
    const-string v9, ""

    .line 343
    .local v9, "pcscfV6":Ljava/lang/String;
    const-string v11, ""

    .line 344
    .local v11, "dnsV6":Ljava/lang/String;
    const-string v6, ""

    .line 345
    .local v6, "addrV4":Ljava/lang/String;
    const-string v8, ""

    .line 346
    .local v8, "pcscfV4":Ljava/lang/String;
    const-string v10, ""

    .line 348
    .local v10, "dnsV4":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0x6

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x2

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x3

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x4

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x5

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 355
    :cond_3
    const-string v2, "EpdgConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parsed.length:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v2, v0, :cond_4

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x6

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x7

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x8

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 361
    const-string v2, "EpdgConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addrV4:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v2, "EpdgConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pcscfV4:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v2, "EpdgConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dnsV4:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgAttach(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v11}, Lcom/mediatek/epdg/EpdgConnector;->access$700(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 371
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "nwInterface":Ljava/lang/String;
    .end local v6    # "addrV4":Ljava/lang/String;
    .end local v7    # "addrV6":Ljava/lang/String;
    .end local v8    # "pcscfV4":Ljava/lang/String;
    .end local v9    # "pcscfV6":Ljava/lang/String;
    .end local v10    # "dnsV4":Ljava/lang/String;
    .end local v11    # "dnsV6":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v17, "wodetach"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 373
    :try_start_2
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 374
    .restart local v15    # "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 375
    .restart local v12    # "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 377
    .restart local v16    # "parsed":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v2, v0, :cond_6

    .line 378
    const-string v2, "EpdgConnector"

    const-string v17, "Wrong response"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 385
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 386
    .restart local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 382
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 384
    .restart local v4    # "statusCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 388
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v17, "wodisconnect"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 390
    :try_start_4
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 391
    .restart local v15    # "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 392
    .restart local v12    # "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3    # "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnector;->access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 394
    .end local v3    # "apn":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    :catch_2
    move-exception v13

    .line 395
    .restart local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 398
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8
    const-string v2, "EpdgConnector"

    const-string v17, "No handle"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 404
    const/4 v8, 0x0

    .line 405
    .local v8, "retryCount":I
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 408
    .local v6, "flag":Landroid/net/LocalSocketAddress$Namespace;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 412
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 413
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v10, "wod_action"

    invoke-direct {v0, v10, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 415
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    const/4 v8, 0x0

    .line 447
    const-string v10, "EpdgConnector"

    const-string v11, "Connect successfully"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_1
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 452
    .local v7, "inputStream":Ljava/io/InputStream;
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 453
    :try_start_2
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 454
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    const/16 v10, 0x1000

    :try_start_3
    new-array v1, v10, [B

    .line 457
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 460
    .local v9, "start":I
    :cond_1
    :goto_1
    const/16 v10, 0x1000

    invoke-virtual {v7, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 462
    .local v2, "count":I
    if-gez v2, :cond_6

    .line 464
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " reading with start = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const-string v11, ""

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 474
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 475
    :try_start_4
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v10

    if-eqz v10, :cond_2

    .line 477
    :try_start_5
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 483
    :goto_2
    :try_start_6
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 485
    :cond_2
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 488
    :try_start_7
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 489
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 491
    :catch_0
    move-exception v5

    .line 492
    .local v5, "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 416
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "start":I
    :catch_1
    move-exception v5

    .line 417
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 420
    :try_start_8
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 421
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 429
    :cond_3
    :goto_3
    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    .line 430
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 431
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fatal error: can\'t connect native daemon:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_4
    const-wide/16 v10, 0x2710

    :try_start_9
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    .line 441
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 442
    goto/16 :goto_0

    .line 437
    :catch_2
    move-exception v4

    .line 438
    .local v4, "er":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 454
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v10
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 471
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 472
    .local v3, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 474
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 475
    :try_start_d
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v10

    if-eqz v10, :cond_5

    .line 477
    :try_start_e
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 483
    :goto_5
    :try_start_f
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 485
    :cond_5
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 488
    :try_start_10
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 489
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 491
    :catch_4
    move-exception v5

    .line 492
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "start":I
    :cond_6
    if-lez v2, :cond_1

    .line 468
    :try_start_11
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v10}, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->handleEpdgCommand(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    .line 474
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "start":I
    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 475
    :try_start_12
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result-object v12

    if-eqz v12, :cond_7

    .line 477
    :try_start_13
    const-string v12, "EpdgConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "closing stream for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v14}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 483
    :goto_6
    :try_start_14
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v13, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v12, v13}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 485
    :cond_7
    monitor-exit v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 488
    :try_start_15
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 489
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    .line 493
    :cond_8
    :goto_7
    throw v10

    .line 479
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "start":I
    :catch_5
    move-exception v3

    .line 480
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_16
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 485
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    throw v10

    .line 479
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "start":I
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 480
    :try_start_17
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 485
    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    throw v10

    .line 479
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 480
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_18
    const-string v12, "EpdgConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed closing output stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 485
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    throw v10

    .line 491
    :catch_8
    move-exception v5

    .line 492
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v11, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing socket: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 423
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_9
    move-exception v10

    goto/16 :goto_3
.end method
