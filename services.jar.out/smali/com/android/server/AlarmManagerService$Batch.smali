.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field standalone:Z

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 272
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 273
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 276
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 277
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 278
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 297
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 298
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 301
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_1

    .line 302
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 305
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 306
    const/4 v1, 0x1

    .line 308
    :cond_2
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 309
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 312
    :cond_3
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_4

    .line 313
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    => now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_4
    return v1
.end method

.method canHold(JJ)Z
    .locals 3
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 410
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 411
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 412
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    const/4 v3, 0x1

    .line 416
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 410
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasWakeups()Z
    .locals 4

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 421
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 422
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 424
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 425
    const/4 v3, 0x1

    .line 428
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 421
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method remove(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 381
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 382
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 383
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 384
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 385
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    const/4 v1, 0x1

    .line 387
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 391
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 392
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 394
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 395
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 397
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 402
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 403
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 405
    :cond_5
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .locals 10
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 321
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 322
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 323
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 324
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 326
    const/4 v1, 0x1

    .line 327
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 331
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 332
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 334
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 335
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 337
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 342
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 343
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 345
    :cond_5
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 351
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 352
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 353
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 354
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 356
    const/4 v1, 0x1

    .line 357
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 361
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 362
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 364
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 365
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 367
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 372
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 373
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 375
    :cond_5
    return v1
.end method

.method size()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 438
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-eqz v1, :cond_0

    .line 439
    const-string v1, " STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method