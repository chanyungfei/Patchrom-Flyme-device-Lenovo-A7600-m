.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1114
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1117
    .local v0, "app":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mUidDetailProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1200(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/flyme/deviceoriginalsettings/net/UidDetail;

    move-result-object v2

    .line 1120
    .local v2, "detail":Lcom/flyme/deviceoriginalsettings/net/UidDetail;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$8;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    iget-object v4, v2, Lcom/flyme/deviceoriginalsettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
