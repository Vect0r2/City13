import { useBackend } from '../backend';
import { Button, LabeledList, Section } from '../components';
import { Window } from '../layouts';

export const WorkforceTerminal = (props, context) => {
  const { act, data } = useBackend(context);
  const { inserted_coupon, name, age, past_city } = data;
  return (
    <Window resizable>
      <Window.Content>
        <Section title="Options">
          <LabeledList>
            <LabeledList.Item>{inserted_coupon}</LabeledList.Item>
          </LabeledList>
          <Button content="Print ID" onClick={() => act('printid')} />
          <Button content="Eject Coupon" onClick={() => act('eject_coupon')} />
        </Section>
        <Section title="Coupon Reader">
          <LabeledList.Item label="Name">{name}</LabeledList.Item>
          <LabeledList.Item label="Age">{age}</LabeledList.Item>
        </Section>
      </Window.Content>
    </Window>
  );
};
