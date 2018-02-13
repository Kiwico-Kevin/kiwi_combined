connection: "kiwi_adwords"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: ad_performance_reports {
  join: ads {
    type: left_outer
    sql_on: ${ad_performance_reports.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: ad_groups {
    type: left_outer
    sql_on: ${ads.ad_group_id} = ${ad_groups.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_groups.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
