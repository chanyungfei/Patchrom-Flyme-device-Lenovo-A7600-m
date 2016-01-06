.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# static fields
.field private static final EXTRA_APP:Ljava/lang/String; = "app"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1624
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "app"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1641
    :goto_0
    return-void

    .line 1630
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1631
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1633
    new-instance v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1634
    .local v1, "fragment":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1635
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1636
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1637
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1638
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1639
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1640
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1645
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1646
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .line 1647
    .local v0, "target":Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    # setter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2502(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1648
    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1649
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1653
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1654
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .line 1655
    .local v0, "target":Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentApp:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2502(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;)Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1656
    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$100(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1657
    return-void
.end method
