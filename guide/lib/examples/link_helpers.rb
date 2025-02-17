module Examples
  module LinkHelpers
    def govuk_link_to_normal
      %(= govuk_link_to 'A regular hyperlink', '#')
    end

    def govuk_link_to_new_tab
      <<~NEW_TAB
        = govuk_link_to 'A text hyperlink that opens a new tab', '#', new_tab: true

        br

        = govuk_link_to('#', new_tab: true) { "A block hyperlink that opens a new tab" }

      NEW_TAB
    end

    def govuk_link_to_inverse
      %(= govuk_link_to('An inverse hyperlink', '#', { inverse: true }))
    end

    def govuk_link_to_muted
      %(= govuk_link_to('A muted hyperlink', '#', { muted: true }))
    end

    def govuk_link_other_styles
      <<~LINKS
        p
          = govuk_link_to('A hyperlink without an underline', '#', { no_underline: true })

        p
          = govuk_link_to('A hyperlink without a visited state', '#', { no_visited_state: true })

        p
          = govuk_link_to('A text-coloured hyperlink', '#', { text_colour: true })
      LINKS
    end

    def govuk_button_to_normal
      %(= govuk_button_to 'A button', '#')
    end

    def govuk_button_link_to_normal
      %(= govuk_button_link_to 'A link styled like a button', '#')
    end

    def govuk_button_inverse
      <<~BUTTON
        = govuk_button_link_to('An inverse button', '#', { inverse: true })
      BUTTON
    end

    def govuk_button_other_styles
      <<~BUTTONS
        .govuk-button-group
          = govuk_button_link_to('A disabled button', '#', { disabled: true })
          = govuk_button_link_to('A secondary button', '#', { secondary: true })
          = govuk_button_link_to('A warning button', '#', { warning: true })
      BUTTONS
    end

    def govuk_link_classes_multiple
      <<~LINK
        p
          = link_to_if(true,
            'A regular link generated by Rails',
            '#',
            class: govuk_link_classes)

        p
          = link_to_if(true,
            'A muted and not underlined link generated by Rails',
            '#',
            class: govuk_link_classes(:muted, :no_underline))
      LINK
    end
  end
end
