view: users {
  sql_table_name: javascript.users ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: context_campaign_sairource {
    type: string
    sql: ${TABLE}.context_campaign_sairource ;;
  }

  dimension: context_campaign_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
  }

  dimension: context_campaign_term {
    type: string
    sql: ${TABLE}.context_campaign_term ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}.context_ip ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}.context_page_path ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}.context_page_referrer ;;
  }

  dimension: context_page_search {
    type: string
    sql: ${TABLE}.context_page_search ;;
  }

  dimension: context_page_title {
    type: string
    sql: ${TABLE}.context_page_title ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}.context_page_url ;;
  }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: experiment_add_hashtag_to_ugc_section {
    type: string
    sql: ${TABLE}.experiment_add_hashtag_to_ugc_section ;;
  }

  dimension: experiment_birthday_hero {
    type: string
    sql: ${TABLE}.experiment_birthday_hero ;;
  }

  dimension: experiment_birthday_promo_refer_a_friend {
    type: string
    sql: ${TABLE}.experiment_birthday_promo_refer_a_friend ;;
  }

  dimension: experiment_black_friday_lightbox_experiment {
    type: string
    sql: ${TABLE}.experiment_black_friday_lightbox_experiment ;;
  }

  dimension: experiment_black_friday_lightbox_experiment_1 {
    type: string
    sql: ${TABLE}.experiment_black_friday_lightbox_experiment_1 ;;
  }

  dimension: experiment_checkout_4_legal_copy_placement {
    type: string
    sql: ${TABLE}.experiment_checkout_4_legal_copy_placement ;;
  }

  dimension: experiment_coupon_after_email_for_lps {
    type: string
    sql: ${TABLE}.experiment_coupon_after_email_for_lps ;;
  }

  dimension: experiment_educational_home_page_hero_copy {
    type: string
    sql: ${TABLE}.experiment_educational_home_page_hero_copy ;;
  }

  dimension: experiment_educational_home_page_hero_copy_fixed {
    type: string
    sql: ${TABLE}.experiment_educational_home_page_hero_copy_fixed ;;
  }

  dimension: experiment_hide_save_price_in_purchase_widget {
    type: string
    sql: ${TABLE}.experiment_hide_save_price_in_purchase_widget ;;
  }

  dimension: experiment_home_page_background_video {
    type: string
    sql: ${TABLE}.experiment_home_page_background_video ;;
  }

  dimension: experiment_home_page_background_video_1 {
    type: string
    sql: ${TABLE}.experiment_home_page_background_video_1 ;;
  }

  dimension: experiment_home_page_background_video_new_visitor_desktop {
    type: string
    sql: ${TABLE}.experiment_home_page_background_video_new_visitor_desktop ;;
  }

  dimension: experiment_home_page_tv_spot_test {
    type: string
    sql: ${TABLE}.experiment_home_page_tv_spot_test ;;
  }

  dimension: experiment_no_image_lightbox_test {
    type: string
    sql: ${TABLE}.experiment_no_image_lightbox_test ;;
  }

  dimension: experiment_no_image_lightbox_test_friends_and_family_flash_sale {
    type: string
    sql: ${TABLE}.experiment_no_image_lightbox_test_friends_and_family_flash_sale ;;
  }

  dimension: experiment_order_success_hide_25_off_another_subscription_banner {
    type: string
    sql: ${TABLE}.experiment_order_success_hide_25_off_another_subscription_banner ;;
  }

  dimension: experiment_recommendation_quiz {
    type: string
    sql: ${TABLE}.experiment_recommendation_quiz ;;
  }

  dimension: experiment_what_s_inside_v2_test {
    type: string
    sql: ${TABLE}.experiment_what_s_inside_v2_test ;;
  }

  dimension_group: loaded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.loaded_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_at ;;
  }

  dimension_group: uuid_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.uuid_ts ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      context_campaign_name,
      context_library_name,
      name,
      completed_order.count,
      email_submitted.count,
      pages.count
    ]
  }
}
