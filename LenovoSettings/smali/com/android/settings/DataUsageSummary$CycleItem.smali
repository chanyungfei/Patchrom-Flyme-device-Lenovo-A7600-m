.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field public end:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    invoke-static {p1, p2, p3, p4, p5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    .line 1349
    iput-wide p2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->start:J

    .line 1350
    iput-wide p4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->end:J

    .line 1351
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    .line 1345
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .param p1, "another"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .prologue
    .line 1369
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v2, p1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1338
    check-cast p1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->compareTo(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1360
    instance-of v2, p1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1361
    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .line 1362
    .local v0, "another":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->end:J

    iget-wide v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->end:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1364
    .end local v0    # "another":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
